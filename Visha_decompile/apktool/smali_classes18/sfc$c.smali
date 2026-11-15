.class public final Lsfc$c;
.super Ltfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lsfc$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsfc$c;

    invoke-direct {v0}, Lsfc$c;-><init>()V

    sput-object v0, Lsfc$c;->c:Lsfc$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "invisible_fake"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
