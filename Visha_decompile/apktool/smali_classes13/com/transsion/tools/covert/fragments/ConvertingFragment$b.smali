.class public Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConvertingFragment;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/covert/fragments/ConvertingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;->a:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;->a:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->loadData(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;->a(Ljava/util/List;)V

    return-void
.end method
