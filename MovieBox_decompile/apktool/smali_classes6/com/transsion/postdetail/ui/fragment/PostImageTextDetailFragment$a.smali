.class public final Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;
    .locals 1

    .line 1
    new-instance p4, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;

    .line 2
    .line 3
    invoke-direct {p4}, Lcom/transsion/postdetail/ui/fragment/PostImageTextDetailFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p5, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "id"

    .line 12
    .line 13
    invoke-virtual {p5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "from_comment"

    .line 17
    .line 18
    invoke-virtual {p5, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    const-string p1, "rec_ops"

    .line 22
    .line 23
    invoke-virtual {p5, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-object p4
.end method
