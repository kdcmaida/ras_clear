class Subject {
  String subjectName = "";
  int count;

  Subject(this.subjectName, this.count);

  String get subject_title => subjectName;

  int get videocount => count;

  set subject_title(String newTitle) {
    if (newTitle.length < 255) {
      this.subjectName = newTitle;
    }
  }

  set video_count(int newcount) {
    this.count = newcount;
  }
}
