.class public Lcom/transsion/playercommon/adapter/RtlPageAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field public f:Ljava/util/List;

.field public g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->g:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->g:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method
