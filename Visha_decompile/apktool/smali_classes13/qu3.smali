.class public final synthetic Lqu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu3;->b:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

    iput-boolean p2, p0, Lqu3;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqu3;->b:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;

    iget-boolean p0, p0, Lqu3;->c:Z

    check-cast p1, Lzfb;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->W1(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;ZLzfb;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
