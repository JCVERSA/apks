.class public final Lml0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lex7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Lkga;

.field public final b:Llx7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkga;->a:Lkga$a;

    invoke-virtual {v0}, Lkga$a;->a()Lkga;

    move-result-object v0

    iput-object v0, p0, Lml0$a;->a:Lkga;

    sget-object v0, Llx7;->a:Llx7;

    const-string v1, "LOG"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lml0$a;->b:Llx7;

    return-void
.end method


# virtual methods
.method public a()Lkga;
    .locals 0

    iget-object p0, p0, Lml0$a;->a:Lkga;

    return-object p0
.end method

.method public getLogger()Llx7;
    .locals 0

    iget-object p0, p0, Lml0$a;->b:Llx7;

    return-object p0
.end method
