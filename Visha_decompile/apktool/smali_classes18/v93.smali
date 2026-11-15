.class public final Lv93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;
.implements Lo33;


# static fields
.field public static final a:Lv93;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv93;

    invoke-direct {v0}, Lv93;-><init>()V

    sput-object v0, Lv93;->a:Lv93;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lpc9;
    .locals 0

    invoke-virtual {p0, p1}, Lv93;->b(I)Lv93;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lv93;
    .locals 0

    sget-object p0, Lv93;->a:Lv93;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lq93;->b:Lq93;

    return-object p0
.end method
