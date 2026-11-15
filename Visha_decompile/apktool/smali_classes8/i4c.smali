.class public final synthetic Li4c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4c;->b:Ljava/util/List;

    iput-boolean p2, p0, Li4c;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li4c;->b:Ljava/util/List;

    iget-boolean p0, p0, Li4c;->c:Z

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->v1(Ljava/util/List;ZLjava/lang/Long;)V

    return-void
.end method
