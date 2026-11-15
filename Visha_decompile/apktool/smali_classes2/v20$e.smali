.class public final Lv20$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lv20$e;

.field public static final b:Lvp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv20$e;

    invoke-direct {v0}, Lv20$e;-><init>()V

    sput-object v0, Lv20$e;->a:Lv20$e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lvp3;->d(Ljava/lang/String;)Lvp3;

    move-result-object v0

    sput-object v0, Lv20$e;->b:Lvp3;

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

    invoke-virtual {p0, p1, p2}, Lv20$e;->b(Lej8;Lzb7;)V

    return-void
.end method

.method public b(Lej8;Lzb7;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
