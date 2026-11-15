.class public Lcom/transsion/tools/activities/SkinsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsActivity;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$b;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$b;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsActivity;->u0(Lcom/transsion/tools/activities/SkinsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$b;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsActivity;->u0(Lcom/transsion/tools/activities/SkinsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$b;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p1}, Lcom/transsion/tools/activities/SkinsActivity;->B0(Lcom/transsion/tools/activities/SkinsActivity;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$b;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->v0(Lcom/transsion/tools/activities/SkinsActivity;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsActivity;->A0(Lcom/transsion/tools/activities/SkinsActivity;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsActivity$b;->a(Ljava/util/List;)V

    return-void
.end method
