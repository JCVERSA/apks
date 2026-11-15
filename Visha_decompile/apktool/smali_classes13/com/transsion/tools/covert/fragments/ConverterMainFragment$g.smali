.class public Lcom/transsion/tools/covert/fragments/ConverterMainFragment$g;
.super Lhf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->inflateOperationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/covert/fragments/ConverterMainFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$g;->e:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-direct {p0, p2}, Lhf7;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lhf7;->b(I)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConverterMainFragment$g;->e:Lcom/transsion/tools/covert/fragments/ConverterMainFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConverterMainFragment;->onItemClick(I)V

    return-void
.end method
