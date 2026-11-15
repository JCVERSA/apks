.class public abstract Lcom/transsion/baseui/adapter/BaseItemBindingProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;
    }
.end annotation


# static fields
.field public static final f:I = 0x8


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;->f()Lf4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->y(Lf4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;-><init>(Lf4/a;)V

    .line 24
    .line 25
    .line 26
    return-object p2
.end method

.method public abstract y(Lf4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
.end method

.method public abstract z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/a;
.end method
