.class public abstract Lhvc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/Integer;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field public static h:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field public static i:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhvc;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lhvc;->h:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    invoke-static {p0}, Lhvc;->b(Ljava/lang/String;)V

    sget-object p0, Lhvc;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    :try_start_0
    sget-object p0, Lhvc;->b:Ljava/lang/String;

    invoke-static {p0}, Lyxc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lhvc;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get signature parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object p1, Lhvc;->h:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :goto_1
    sput-object p0, Lhvc;->h:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :cond_0
    :goto_2
    :try_start_1
    sget-object p0, Lhvc;->d:Ljava/lang/String;

    const-string v0, "deobfuscate"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lg85;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lgvc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lhvc;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lfvc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lhvc;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lhvc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lhvc;->i:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    invoke-static {p0}, Lhvc;->b(Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lhvc;->b:Ljava/lang/String;

    invoke-static {p0}, Lyxc;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lhvc;->c:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get signature timestamp"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lhvc;->i:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :goto_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not convert signature timestamp to a number"

    invoke-direct {v0, v1, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lhvc;->i:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    :goto_2
    sget-object p0, Lhvc;->c:Ljava/lang/Integer;

    return-object p0

    :goto_3
    sput-object p0, Lhvc;->i:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :cond_1
    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lezc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget-object v1, Lhvc;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lhvc;->b(Ljava/lang/String;)V

    sget-object p0, Lhvc;->g:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez p0, :cond_3

    sget-object p0, Lhvc;->f:Ljava/lang/String;

    if-nez p0, :cond_2

    :try_start_0
    sget-object p0, Lhvc;->b:Ljava/lang/String;

    invoke-static {p0}, Lezc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lhvc;->e:Ljava/lang/String;

    sget-object v2, Lhvc;->b:Ljava/lang/String;

    invoke-static {v2, p0}, Lezc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lhvc;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get throttling parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object p1, Lhvc;->g:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :goto_1
    sput-object p0, Lhvc;->g:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw p0

    :cond_2
    :goto_2
    :try_start_1
    sget-object p0, Lhvc;->f:Ljava/lang/String;

    sget-object v2, Lhvc;->e:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lg85;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-direct {p1, v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    throw p0
.end method
