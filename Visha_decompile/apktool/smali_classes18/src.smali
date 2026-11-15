.class public abstract Lsrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorc;


# static fields
.field public static a:Lorg/apache/xml/utils/PrefixResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrrc;

    invoke-direct {v0}, Lrrc;-><init>()V

    sput-object v0, Lsrc;->a:Lorg/apache/xml/utils/PrefixResolver;

    return-void
.end method
