.class public abstract Lcom/transsion/preload/OptimizeListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/preload/OptimizeListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TK;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u000f*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001\u0010B\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/preload/OptimizeListAdapter;",
        "T",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "K",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "layoutResId",
        "<init>",
        "(I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "layoutId",
        "Landroid/view/View;",
        "i",
        "(Landroid/view/ViewGroup;I)Landroid/view/View;",
        "o",
        "a",
        "common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final o:Lcom/transsion/preload/OptimizeListAdapter$a;

.field public static final p:Ltd8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/preload/OptimizeListAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/preload/OptimizeListAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/preload/OptimizeListAdapter;->o:Lcom/transsion/preload/OptimizeListAdapter$a;

    new-instance v0, Ltd8;

    invoke-direct {v0}, Ltd8;-><init>()V

    sput-object v0, Lcom/transsion/preload/OptimizeListAdapter;->p:Ltd8;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method

.method public static final synthetic g()Ltd8;
    .locals 1

    sget-object v0, Lcom/transsion/preload/OptimizeListAdapter;->p:Ltd8;

    return-object v0
.end method

.method public static final h()Ltd8;
    .locals 1

    sget-object v0, Lcom/transsion/preload/OptimizeListAdapter;->o:Lcom/transsion/preload/OptimizeListAdapter$a;

    invoke-virtual {v0}, Lcom/transsion/preload/OptimizeListAdapter$a;->a()Ltd8;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final i(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/preload/OptimizeListAdapter;->p:Ltd8;

    invoke-virtual {p0, p1, p2}, Ltd8;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    const-string p1, "getView(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
