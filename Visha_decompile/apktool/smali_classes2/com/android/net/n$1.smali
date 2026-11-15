.class final Lcom/android/net/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/net/n;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/android/net/n;


# direct methods
.method public constructor <init>(Lcom/android/net/n;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/n$1;->c:Lcom/android/net/n;

    iput-object p2, p0, Lcom/android/net/n$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/net/n$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/net/n$1;->c:Lcom/android/net/n;

    invoke-static {v0}, Lcom/android/net/n;->a(Lcom/android/net/n;)Lcom/android/net/v$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/n$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/net/n$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/net/v$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/net/n$1;->c:Lcom/android/net/n;

    invoke-static {v0}, Lcom/android/net/n;->a(Lcom/android/net/n;)Lcom/android/net/v$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/net/v$a;->a(Ljava/lang/String;)V

    return-void
.end method
