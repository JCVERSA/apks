.class public final Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000b2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "helper",
        "item",
        "Lzfb;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;)V",
        "o",
        "a",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final o:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;->o:Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/tools/R$layout;->item_file_trans_permission:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;)V
    .locals 1

    const-string p0, "helper"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget p0, Lcom/transsion/tools/R$id;->title:I

    invoke-virtual {p2}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;->c()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/tools/R$id;->info:I

    invoke-virtual {p2}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;->b()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget p0, Lcom/transsion/tools/R$id;->icon:I

    invoke-virtual {p2}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;->a()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/tools/filetrans/adapter/FileTransPermissionAdapter$a$a;)V

    return-void
.end method
