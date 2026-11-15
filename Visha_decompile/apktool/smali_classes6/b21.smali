.class public final synthetic Lb21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb21;->b:Ljava/util/List;

    iput-boolean p2, p0, Lb21;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb21;->b:Ljava/util/List;

    iget-boolean p0, p0, Lb21;->c:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/cloud/fragment/CloudFragment;->u1(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
