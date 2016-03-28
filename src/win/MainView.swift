import Foundation

class MainView:CustomView {
    var container:Section?
    override func resolveSkin() {
        super.resolveSkin()
        StyleManager.addStyle("Section#sectionContainer{fill:orange;float:left;clear:left;}")
        container = addSubView(Section(width,height,self,"sectionContainer"))
        createTreeList()
        
        //StyleManager.addStyle("Slider [Button,Thumb] Element{fill-alpha:1;}")//testing grouping
    }
    /**
     *
     */
    func createTreeList(){
        StyleManager.addStylesByURL("~/Desktop/css/treelistdemo.css")
        //create the tree list here
        
        let xml:NSXMLElement = FileParser.xml("~/Desktop/assets/xml/treelist.xml")
        let treeList:TreeList = container!.addSubView(TreeList(140, 288, 24, Node(xml),container))
        treeList
        
        Swift.print("selectedIndex: " + "\(TreeListParser.selectedIndex(treeList))")
        /*
        Swift.print("selected: " + "\(TreeListParser.selected(treeList))")
        Swift.print("selected Title: " + "\(XMLParser.attributesAt(treeList.node.xml, TreeListParser.selectedIndex(treeList))!["title"])")
        TreeListModifier.collapseAt(treeList, [])
        TreeListModifier.setSelectedAt(treeList, [1])
        TreeListModifier.unSelectAll(treeList)
        TreeListModifier.explodeAt(treeList,[])
        TreeListModifier.removeAt(treeList, [1])
        treeList.node.addAt([1],  NSXMLElement("<item title=\"Fish\"/>"))/*new*/
        */
    }
    override func createTitleBar() {
        StyleManager.addStylesByURL("~/Desktop/css/titleBar.css")
        StyleManager.addStyle("Section#titleBar{padding-top:16px;padding-bottom:8px;padding-left:12px;}")
        super.createTitleBar()
    }
}
