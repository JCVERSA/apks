.class public final synthetic Lol4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lol4;->b:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iput-object p2, p0, Lol4;->c:Landroid/view/View;

    iput-object p3, p0, Lol4;->d:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lol4;->b:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v1, p0, Lol4;->c:Landroid/view/View;

    iget-object p0, p0, Lol4;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->b(Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method
