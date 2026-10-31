.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/snaptube/ads/base/AdsPos;->isFeedstream:Z

    return-void
.end method
