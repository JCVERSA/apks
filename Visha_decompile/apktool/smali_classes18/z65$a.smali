.class public final Lz65$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz65;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lz65$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz65$a;

    invoke-direct {v0}, Lz65$a;-><init>()V

    sput-object v0, Lz65$a;->a:Lz65$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv65;)V
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
