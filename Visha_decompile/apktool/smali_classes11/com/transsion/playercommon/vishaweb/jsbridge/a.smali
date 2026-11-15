.class public final synthetic Lcom/transsion/playercommon/vishaweb/jsbridge/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;

.field public final synthetic c:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->b:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;

    iput-object p2, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->c:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    iput-object p3, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->b:Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;

    iget-object v1, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->c:Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;

    iget-object v2, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/vishaweb/jsbridge/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;->a(Lcom/transsion/playercommon/vishaweb/jsbridge/DefaultJsToNative$1;Lcom/transsion/playercommon/vishaweb/VishaWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
