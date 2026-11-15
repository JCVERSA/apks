.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ugcvideodetail/hepler/subtitle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/b$a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)Lcom/transsion/ugcvideodetail/hepler/subtitle/b;
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "pageName"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "subtitleLayout"

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "subtitleView"

    .line 20
    .line 21
    move-object v5, p4

    .line 22
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    move-object v6, p5

    .line 29
    move-object v7, p6

    .line 30
    move-object/from16 v8, p7

    .line 31
    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/hepler/subtitle/UGCImmVideoSubtitleControlImp;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/ugcvideodetail/hepler/subtitle/a;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
