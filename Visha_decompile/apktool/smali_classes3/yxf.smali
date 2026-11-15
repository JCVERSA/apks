.class public final Lyxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lzxf;


# direct methods
.method public constructor <init>(Lzxf;)V
    .locals 0

    iput-object p1, p0, Lyxf;->a:Lzxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lyxf;->a:Lzxf;

    invoke-static {p0}, Lzxf;->b(Lzxf;)Lb0g;

    move-result-object p0

    invoke-virtual {p0}, Lb0g;->zza()V

    return-void
.end method
