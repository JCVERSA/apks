.class public final synthetic Lar3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iput-boolean p2, p0, Lar3;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lar3;->b:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-boolean p0, p0, Lar3;->c:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;ZLjava/lang/Throwable;)V

    return-void
.end method
