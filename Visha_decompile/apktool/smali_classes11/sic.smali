.class public final synthetic Lsic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsic;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lsic;->b:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V

    return-void
.end method
