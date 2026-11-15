.class public final synthetic Lzvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljwb;

.field public final synthetic c:Lcom/transsion/dbdata/database/VideoPlayList;


# direct methods
.method public synthetic constructor <init>(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzvb;->b:Ljwb;

    iput-object p2, p0, Lzvb;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzvb;->b:Ljwb;

    iget-object p0, p0, Lzvb;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-static {v0, p0, p1}, Ljwb;->i(Ljwb;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
