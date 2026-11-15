.class public Lorg/reflections/vfs/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/reflections/vfs/Vfs$b;


# instance fields
.field public final a:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/d;->a:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/reflections/vfs/d;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
