.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "^(\\S+).*"

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/snaptube/extractor/pluginlib/ExtractorWrapper;->PATTER_URL_FIX:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    return-void
.end method
