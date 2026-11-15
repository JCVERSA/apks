.class public Lcom/transsion/audio/fragments/PlayListFoldersFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk78$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/PlayListFoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$b;->a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 3

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFoldersFragment$b;->a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    const-string v0, "vd_create_a_play_list_Icon_s"

    invoke-static {p0, p1, v0}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->R1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-wide/16 v1, 0x246c

    invoke-static {p0, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
