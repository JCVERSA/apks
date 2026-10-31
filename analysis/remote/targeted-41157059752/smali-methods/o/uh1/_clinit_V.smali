.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/list/creator/[^/]+/snaplists"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/uh1;->c:Ljava/util/regex/Pattern;

    const-string v0, "/list/creator/[^/]+/videos"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/uh1;->d:Ljava/util/regex/Pattern;

    return-void
.end method
