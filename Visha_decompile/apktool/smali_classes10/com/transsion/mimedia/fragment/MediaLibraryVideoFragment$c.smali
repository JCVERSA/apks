.class public final synthetic Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Le84;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le74;


# direct methods
.method public constructor <init>(Le74;)V
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$c;->a:Le74;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/Observer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Le84;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Le84;->getFunctionDelegate()Lx74;

    move-result-object p0

    check-cast p1, Le84;

    invoke-interface {p1}, Le84;->getFunctionDelegate()Lx74;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lx74;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$c;->a:Le74;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Le84;->getFunctionDelegate()Lx74;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment$c;->a:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
