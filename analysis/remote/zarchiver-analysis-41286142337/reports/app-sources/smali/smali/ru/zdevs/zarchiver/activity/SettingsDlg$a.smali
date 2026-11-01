.class public final Lru/zdevs/zarchiver/activity/SettingsDlg$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/SettingsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/ListAdapter;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a:Landroid/widget/ListAdapter;

    .line 5
    .line 6
    iput p2, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->b:I

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const v0, 0x102000a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Lru/zdevs/zarchiver/activity/SettingsDlg$a;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, p2}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-direct {v2, v1, p1, p0}, Lru/zdevs/zarchiver/activity/SettingsDlg$a;-><init>(Landroid/widget/ListAdapter;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->a:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p2, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->b:I

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget p3, p0, Lru/zdevs/zarchiver/activity/SettingsDlg$a;->c:I

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p1
.end method
