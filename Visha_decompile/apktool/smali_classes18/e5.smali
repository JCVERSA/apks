.class public final Le5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw17;


# static fields
.field public static final b:Le5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le5;

    invoke-direct {v0}, Le5;-><init>()V

    sput-object v0, Le5;->b:Le5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
