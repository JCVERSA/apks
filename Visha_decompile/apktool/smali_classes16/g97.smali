.class public final synthetic Lg97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg97;->b:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lg97;->b:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->updateLayoutToVertical()V

    return-void
.end method
