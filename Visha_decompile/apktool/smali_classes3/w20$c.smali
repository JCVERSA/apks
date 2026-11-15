.class public final Lw20$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lw20$c;

.field public static final b:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw20$c;

    invoke-direct {v0}, Lw20$c;-><init>()V

    sput-object v0, Lw20$c;->a:Lw20$c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lw20$c;->b:Lvp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    check-cast p2, Lzb7;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lw20$c;->b(Ldj8;Lzb7;)V

    return-void
.end method

.method public b(Ldj8;Lzb7;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
