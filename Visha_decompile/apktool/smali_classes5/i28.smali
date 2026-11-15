.class public final synthetic Li28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li28;->b:Ljava/util/ArrayList;

    iput-boolean p2, p0, Li28;->c:Z

    iput-object p3, p0, Li28;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li28;->b:Ljava/util/ArrayList;

    iget-boolean v1, p0, Li28;->c:Z

    iget-object p0, p0, Li28;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->i(Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method
