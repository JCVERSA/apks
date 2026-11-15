.class public final synthetic Lsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd;->a:Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lsd;->a:Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    check-cast p1, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->a(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)Z

    move-result p0

    return p0
.end method
