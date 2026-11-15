.class public final Lzbb$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzbb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final synthetic c:Le74;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le74;)V
    .locals 0

    iput-object p2, p0, Lzbb$a$a;->c:Le74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzbb$a$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzbb$a$a;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lzbb$a$a;->c:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
