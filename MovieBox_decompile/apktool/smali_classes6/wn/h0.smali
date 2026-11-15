.class public final Lwn/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Lcom/tn/lib/view/expand/ExpandView;

.field public final b:Lcom/tn/lib/view/expand/ExpandView;


# direct methods
.method private constructor <init>(Lcom/tn/lib/view/expand/ExpandView;Lcom/tn/lib/view/expand/ExpandView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwn/h0;->a:Lcom/tn/lib/view/expand/ExpandView;

    .line 5
    .line 6
    iput-object p2, p0, Lwn/h0;->b:Lcom/tn/lib/view/expand/ExpandView;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/View;)Lwn/h0;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    check-cast p0, Lcom/tn/lib/view/expand/ExpandView;

    .line 4
    .line 5
    new-instance v0, Lwn/h0;

    .line 6
    .line 7
    invoke-direct {v0, p0, p0}, Lwn/h0;-><init>(Lcom/tn/lib/view/expand/ExpandView;Lcom/tn/lib/view/expand/ExpandView;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    const-string v0, "rootView"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public b()Lcom/tn/lib/view/expand/ExpandView;
    .locals 1

    .line 1
    iget-object v0, p0, Lwn/h0;->a:Lcom/tn/lib/view/expand/ExpandView;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwn/h0;->b()Lcom/tn/lib/view/expand/ExpandView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
