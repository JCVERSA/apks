.class public Lapp/fast/ssh/AppsFragment_Backup;
.super Landroidx/fragment/app/Fragment;
.source "AppsFragment_Backup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/fast/ssh/AppsFragment_Backup$AdapterTask;
    }
.end annotation


# instance fields
.field private adapter:Lapp/fast/ssh/adapter/AppsAdapter;

.field private bypass:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private wait_screen:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/AppsFragment_Backup;)Lapp/fast/ssh/adapter/AppsAdapter;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/AppsFragment_Backup;->adapter:Lapp/fast/ssh/adapter/AppsAdapter;

    return-object p0
.end method

.method static synthetic access$002(Lapp/fast/ssh/AppsFragment_Backup;Lapp/fast/ssh/adapter/AppsAdapter;)Lapp/fast/ssh/adapter/AppsAdapter;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/AppsFragment_Backup;->adapter:Lapp/fast/ssh/adapter/AppsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lapp/fast/ssh/AppsFragment_Backup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/AppsFragment_Backup;->wait_screen:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/AppsFragment_Backup;)Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/AppsFragment_Backup;->bypass:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    return-object p0
.end method

.method static synthetic access$300(Lapp/fast/ssh/AppsFragment_Backup;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/AppsFragment_Backup;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003d

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
