.class public Lcom/transsion/audio/fragments/PlayListFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk78$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->g4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$e;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment$e;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/audio/fragments/PlayListFragment;->e3(Lcom/transsion/audio/fragments/PlayListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$e;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
