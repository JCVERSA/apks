.class public final Lih5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lih5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lih5;

    invoke-direct {v0}, Lih5;-><init>()V

    sput-object v0, Lih5;->a:Lih5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlin/KotlinVersion;
    .locals 4

    new-instance v0, Lkotlin/KotlinVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lkotlin/KotlinVersion;-><init>(III)V

    return-object v0
.end method
