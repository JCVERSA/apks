.class public final Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindingHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lf4/a;",
        ">",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0008\u0008\u0002\u0010\u0002*\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00028\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;",
        "Lf4/a;",
        "VB",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "binding",
        "<init>",
        "(Lf4/a;)V",
        "a",
        "Lf4/a;",
        "f",
        "()Lf4/a;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lf4/a;


# direct methods
.method public constructor <init>(Lf4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lf4/a;->getRoot()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;->a:Lf4/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f()Lf4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;->a:Lf4/a;

    .line 2
    .line 3
    return-object v0
.end method
