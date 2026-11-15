.class public final Lsfc$b;
.super Ltfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lsfc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsfc$b;

    invoke-direct {v0}, Lsfc$b;-><init>()V

    sput-object v0, Lsfc$b;->c:Lsfc$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
