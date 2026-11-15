.class public final synthetic Lnqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/transsion/dbdata/database/VideoPlayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqb;->b:Ljava/util/List;

    iput-object p2, p0, Lnqb;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnqb;->b:Ljava/util/List;

    iget-object p0, p0, Lnqb;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/b;->c(Ljava/util/List;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
