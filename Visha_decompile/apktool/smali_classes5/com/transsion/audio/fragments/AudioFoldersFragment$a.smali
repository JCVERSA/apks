.class public Lcom/transsion/audio/fragments/AudioFoldersFragment$a;
.super Lcom/transsion/utils/CustomGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioFoldersFragment;->g2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/audio/fragments/AudioFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment$a;->e:Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-direct {p0, p2, p3}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    return p0
.end method
