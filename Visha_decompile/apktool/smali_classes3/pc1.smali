.class public final synthetic Lpc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lzb1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lzb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc1;->a:Ljava/lang/String;

    iput-object p2, p0, Lpc1;->b:Lzb1;

    return-void
.end method


# virtual methods
.method public final a(Lic1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpc1;->a:Ljava/lang/String;

    iget-object p0, p0, Lpc1;->b:Lzb1;

    invoke-static {v0, p0, p1}, Lqc1;->b(Ljava/lang/String;Lzb1;Lic1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
