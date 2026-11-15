.class public final Lcom/transsion/member/view/CheckInView$b;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/CheckInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/CheckInView;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$b;->b:Lcom/transsion/member/view/CheckInView;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput p3, p0, Lcom/transsion/member/view/CheckInView$b;->a:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/member/view/CheckInView$b;->a:I

    .line 2
    .line 3
    return v0
.end method
