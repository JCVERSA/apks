.class final Lcom/doman/core/CoreMain$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/net/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/CoreMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/CoreMain;


# direct methods
.method public constructor <init>(Lcom/doman/core/CoreMain;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain$6;->a:Lcom/doman/core/CoreMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/u;)V
    .locals 0

    sget-object p0, Lcom/doman/core/webview/c;->S:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
