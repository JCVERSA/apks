.class public final synthetic Lku9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj8;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku9;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lku9;->a:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->b(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method
