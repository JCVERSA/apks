.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment$a;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$a;->e:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$a;->e:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
