.class public final synthetic Lq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9;->b:Landroid/webkit/WebView;

    iput-wide p2, p0, Lq9;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq9;->b:Landroid/webkit/WebView;

    iget-wide v1, p0, Lq9;->c:J

    invoke-static {v0, v1, v2}, Ls9;->a(Landroid/webkit/WebView;J)V

    return-void
.end method
