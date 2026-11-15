.class public final synthetic Lb78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lk78;

.field public final synthetic c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lk78;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb78;->b:Lk78;

    iput-object p2, p0, Lb78;->c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lb78;->b:Lk78;

    iget-object p0, p0, Lb78;->c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    invoke-static {v0, p0, p1, p2, p3}, Lk78;->a(Lk78;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
