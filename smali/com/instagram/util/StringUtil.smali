.class public Lcom/instagram/util/StringUtil;
.super Lcom/facebook/common/i/c;
.source "StringUtil.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field private static emojiRegexp:Ljava/util/regex/Pattern;

.field private static hashRegexp:Ljava/util/regex/Pattern;

.field private static mentionRegexp:Ljava/util/regex/Pattern;

.field private static whiteSpacePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 15
    const-string v0, "(^|[^a-zA-Z0-9_]+)(@([a-zA-Z0-9_]+))"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/StringUtil;->mentionRegexp:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "(#\\w+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/StringUtil;->hashRegexp:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "[\ud83c\udc04\ud83c\udd70\ud83c\udd71\ud83c\udd7e\ud83c\udd7f\ud83c\udd8e\ud83c\udd92\ud83c\udd94\ud83c\udd95\ud83c\udd97\ud83c\udd99\ud83c\udd9a\ud83c\udde7\ud83c\udde8\ud83c\udde9\ud83c\uddea\ud83c\uddea\ud83c\uddeb\ud83c\uddec\ud83c\uddee\ud83c\uddef\ud83c\uddf0\ud83c\uddf3\ud83c\uddf5\ud83c\uddf7\ud83c\uddf7\ud83c\uddf7\ud83c\uddf8\ud83c\uddf8\ud83c\uddf9\ud83c\uddfa\ud83c\uddfa\ud83c\ude01\ud83c\ude02\ud83c\ude1a\ud83c\ude2f\ud83c\ude33\ud83c\ude35\ud83c\ude36\ud83c\ude37\ud83c\ude38\ud83c\ude39\ud83c\ude3a\ud83c\ude50\ud83c\udf00\ud83c\udf02\ud83c\udf03\ud83c\udf04\ud83c\udf05\ud83c\udf06\ud83c\udf07\ud83c\udf08\ud83c\udf0a\ud83c\udf19\ud83c\udf1f\ud83c\udf34\ud83c\udf35\ud83c\udf37\ud83c\udf38\ud83c\udf39\ud83c\udf3a\ud83c\udf3b\ud83c\udf3e\ud83c\udf40\ud83c\udf41\ud83c\udf42\ud83c\udf43\ud83c\udf45\ud83c\udf46\ud83c\udf49\ud83c\udf4a\ud83c\udf4e\ud83c\udf53\ud83c\udf54\ud83c\udf58\ud83c\udf59\ud83c\udf5a\ud83c\udf5b\ud83c\udf5c\ud83c\udf5d\ud83c\udf5e\ud83c\udf5f\ud83c\udf61\ud83c\udf62\ud83c\udf63\ud83c\udf66\ud83c\udf67\ud83c\udf70\ud83c\udf71\ud83c\udf72\ud83c\udf73\ud83c\udf74\ud83c\udf75\ud83c\udf76\ud83c\udf78\ud83c\udf7a\ud83c\udf7b\ud83c\udf80\ud83c\udf81\ud83c\udf82\ud83c\udf83\ud83c\udf84\ud83c\udf85\ud83c\udf86\ud83c\udf87\ud83c\udf88\ud83c\udf89\ud83c\udf8c\ud83c\udf8d\ud83c\udf8e\ud83c\udf8f\ud83c\udf90\ud83c\udf91\ud83c\udf92\ud83c\udf93\ud83c\udfa1\ud83c\udfa2\ud83c\udfa4\ud83c\udfa5\ud83c\udfa6\ud83c\udfa7\ud83c\udfa8\ud83c\udfa9\ud83c\udfab\ud83c\udfac\ud83c\udfaf\ud83c\udfb0\ud83c\udfb1\ud83c\udfb5\ud83c\udfb6\ud83c\udfb7\ud83c\udfb8\ud83c\udfba\ud83c\udfbe\ud83c\udfbf\ud83c\udfc0\ud83c\udfc1\ud83c\udfc3\ud83c\udfc4\ud83c\udfc6\ud83c\udfc8\ud83c\udfca\ud83c\udfe0\ud83c\udfe2\ud83c\udfe3\ud83c\udfe5\ud83c\udfe6\ud83c\udfe7\ud83c\udfe8\ud83c\udfe9\ud83c\udfea\ud83c\udfeb\ud83c\udfec\ud83c\udfed\ud83c\udfef\ud83c\udff0\ud83d\udc0d\ud83d\udc0e\ud83d\udc11\ud83d\udc12\ud83d\udc14\ud83d\udc17\ud83d\udc18\ud83d\udc19\ud83d\udc1a\ud83d\udc1b\ud83d\udc1f\ud83d\udc20\ud83d\udc24\ud83d\udc26\ud83d\udc27\ud83d\udc28\ud83d\udc2b\ud83d\udc2c\ud83d\udc2d\ud83d\udc2e\ud83d\udc2f\ud83d\udc30\ud83d\udc31\ud83d\udc33\ud83d\udc34\ud83d\udc35\ud83d\udc36\ud83d\udc37\ud83d\udc38\ud83d\udc39\ud83d\udc3a\ud83d\udc3b\ud83d\udc40\ud83d\udc42\ud83d\udc43\ud83d\udc44\ud83d\udc46\ud83d\udc47\ud83d\udc48\ud83d\udc49\ud83d\udc4a\ud83d\udc4b\ud83d\udc4c\ud83d\udc4d\ud83d\udc4e\ud83d\udc4f\ud83d\udc50\ud83d\udc51\ud83d\udc52\ud83d\udc54\ud83d\udc55\ud83d\udc57\ud83d\udc58\ud83d\udc59\ud83d\udc5c\ud83d\udc5f\ud83d\udc60\ud83d\udc61\ud83d\udc62\ud83d\udc63\ud83d\udc66\ud83d\udc67\ud83d\udc68\ud83d\udc69\ud83d\udc6b\ud83d\udc6e\ud83d\udc6f\ud83d\udc71\ud83d\udc72\ud83d\udc73\ud83d\udc74\ud83d\udc75\ud83d\udc76\ud83d\udc77\ud83d\udc78\ud83d\udc7b\ud83d\udc7c\ud83d\udc7d\ud83d\udc7e\ud83d\udc7f\ud83d\udc80\ud83d\udc81\ud83d\udc82\ud83d\udc83\ud83d\udc84\ud83d\udc85\ud83d\udc86\ud83d\udc87\ud83d\udc88\ud83d\udc89\ud83d\udc8a\ud83d\udc8b\ud83d\udc8d\ud83d\udc8e\ud83d\udc8f\ud83d\udc90\ud83d\udc91\ud83d\udc92\ud83d\udc93\ud83d\udc94\ud83d\udc97\ud83d\udc98\ud83d\udc99\ud83d\udc9a\ud83d\udc9b\ud83d\udc9c\ud83d\udc9d\ud83d\udc9f\ud83d\udca1\ud83d\udca2\ud83d\udca3\ud83d\udca4\ud83d\udca6\ud83d\udca8\ud83d\udca9\ud83d\udcaa\ud83d\udcb0\ud83d\udcb1\ud83d\udcb1\ud83d\udcb9\ud83d\udcb9\ud83d\udcba\ud83d\udcbb\ud83d\udcbc\ud83d\udcbd\ud83d\udcbf\ud83d\udcc0\ud83d\udcd6\ud83d\udcdd\ud83d\udce0\ud83d\udce1\ud83d\udce2\ud83d\udce3\ud83d\udce9\ud83d\udceb\ud83d\udcee\ud83d\udcf1\ud83d\udcf2\ud83d\udcf3\ud83d\udcf4\ud83d\udcf6\ud83d\udcf7\ud83d\udcfa\ud83d\udcfb\ud83d\udcfc\ud83d\udd0a\ud83d\udd0d\ud83d\udd11\ud83d\udd12\ud83d\udd13\ud83d\udd14\ud83d\udd1d\ud83d\udd1e\ud83d\udd25\ud83d\udd28\ud83d\udd2b\ud83d\udd2f\ud83d\udd30\ud83d\udd31\ud83d\udd32\ud83d\udd33\ud83d\udd34\ud83d\udd50\ud83d\udd51\ud83d\udd52\ud83d\udd53\ud83d\udd54\ud83d\udd55\ud83d\udd56\ud83d\udd57\ud83d\udd58\ud83d\udd59\ud83d\udd5a\ud83d\udd5b\ud83d\uddfb\ud83d\uddfc\ud83d\uddfd\ud83d\ude01\ud83d\ude02\ud83d\ude03\ud83d\ude04\ud83d\ude09\ud83d\ude0a\ud83d\ude0c\ud83d\ude0d\ud83d\ude0f\ud83d\ude12\ud83d\ude13\ud83d\ude14\ud83d\ude16\ud83d\ude18\ud83d\ude1a\ud83d\ude1c\ud83d\ude1d\ud83d\ude1e\ud83d\ude20\ud83d\ude21\ud83d\ude22\ud83d\ude23\ud83d\ude25\ud83d\ude28\ud83d\ude2a\ud83d\ude2d\ud83d\ude30\ud83d\ude31\ud83d\ude32\ud83d\ude33\ud83d\ude37\ud83d\ude45\ud83d\ude46\ud83d\ude47\ud83d\ude4c\ud83d\ude4f\ud83d\ude80\ud83d\ude83\ud83d\ude84\ud83d\ude85\ud83d\ude87\ud83d\ude89\ud83d\ude8c\ud83d\ude8f\ud83d\ude91\ud83d\ude92\ud83d\ude93\ud83d\ude95\ud83d\ude97\ud83d\ude99\ud83d\ude9a\ud83d\udea2\ud83d\udea4\ud83d\udea5\ud83d\udea7\ud83d\udeac\ud83d\udead\ud83d\udeb2\ud83d\udeb6\ud83d\udeb9\ud83d\udeba\ud83d\udebb\ud83d\udebc\ud83d\udebd\ud83d\udebe\ud83d\udec0\u263a\u2728\u2755\u2754\u270a\u270c\u270b\u261d\u2600\u2614\u2601\u26c4\u26a1\u2615\u303d\u2666\u2663\u2660\u26f3\u26be\u26bd\u27bf\u260e\u2702\u26ea\u26fa\u26f5\u26f2\u2668\u26a0\u26fd\u20e3\u20e3\u20e3\u20e3\u20e3\u20e3\u20e3\u2b05\u2b07\u2b06\u20e3\u20e3\u20e3\u20e3\u27a1\u2197\u2196\u2198\u2199\u25c0\u25b6\u23ea\u23e9\u267f\u2733\u3297\u3299\u2734\u2648\u2649\u264a\u264b\u264c\u264d\u264e\u26ce\u2653\u2652\u2651\u2650\u264f\u274c\u2b55]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/StringUtil;->emojiRegexp:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/StringUtil;->whiteSpacePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/common/i/c;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "string"
    .parameter "def"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/instagram/util/StringUtil;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hashMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1
    .parameter "text"

    .prologue
    .line 29
    sget-object v0, Lcom/instagram/util/StringUtil;->hashRegexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isValidEmail(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x2e

    .line 67
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "@"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const-string v2, "@"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v1, "@"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v0, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mentionMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 1
    .parameter "text"

    .prologue
    .line 25
    sget-object v0, Lcom/instagram/util/StringUtil;->mentionRegexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static stripEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 42
    sget-object v0, Lcom/instagram/util/StringUtil;->emojiRegexp:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 43
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static stripNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 50
    const-string v0, "\r\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
