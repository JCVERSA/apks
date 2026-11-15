.class public final synthetic Llm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

.field public final synthetic b:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llm4;->a:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    iput-object p2, p0, Llm4;->b:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Llm4;->a:Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    iget-object p0, p0, Llm4;->b:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->a(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method
