class PlayList {
  String ListTitle = "", VideoId = "",viewtype="";

  PlayList(this.ListTitle, this.VideoId,this.viewtype);

  String get Video_title => ListTitle;

  String get Video_id => VideoId;
  String get View_type => viewtype;

  set Video_title(String newTitle) {
    if (newTitle.length < 255) {
      this.ListTitle = newTitle;
    }
  }

  set Video_id(String newTitle) {
    if (newTitle.length < 255) {
      this.VideoId = newTitle;
    }
  }
  set View_type(String newTitle) {
    if (newTitle.length < 255) {
      this.viewtype = newTitle;
    }
  }
}
