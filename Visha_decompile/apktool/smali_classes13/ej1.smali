.class public final synthetic Lej1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej1;->b:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    iput-object p2, p0, Lej1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lej1;->b:Lcom/transsion/tools/covert/fragments/ConvertingFragment;

    iget-object p0, p0, Lej1;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->h0(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Ljava/util/List;)V

    return-void
.end method
