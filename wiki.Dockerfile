FROM mediawiki 


# Installing extensions 
WORKDIR /var/www/html/extensions

# CodeMirror https://www.mediawiki.org/wiki/Extension:CodeMirror
RUN git clone https://github.com/wikimedia/mediawiki-extensions-CodeMirror.git ./CodeMirror && \
	
# Cargo https://www.mediawiki.org/wiki/Extension:Cargo
	git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/Cargo  && \

# Page Forms https://www.mediawiki.org/wiki/Extension:Page_Forms
	git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/PageForms.git  && \

# Tabber https://www.mediawiki.org/wiki/Extension:Tabber
	git clone https://gitlab.com/hydrawiki/extensions/Tabber.git  && \

# GeoCrumbs https://www.mediawiki.org/wiki/Extension:GeoCrumbs
	git clone https://github.com/wikimedia/mediawiki-extensions-GeoCrumbs.git ./GeoCrumbs && \
	
# Moderation https://www.mediawiki.org/wiki/Extension:Moderation
	git clone https://github.com/edwardspec/mediawiki-moderation.git ./Moderation && \

# NewArticleTemplates https://www.mediawiki.org/wiki/Extension:NewArticleTemplates
	git clone https://github.com/jmnote/NewArticleTemplates.git  && \

# CheckUser https://www.mediawiki.org/wiki/Extension:CheckUser
	git clone -b REL1_36 https://gerrit.wikimedia.org/r/mediawiki/extensions/CheckUser.git  && \

# TemplateStyles https://www.mediawiki.org/wiki/Extension:TemplateStyles
	git clone https://github.com/wikimedia/mediawiki-extensions-TemplateStyles.git ./TemplateStyles && \
	
# SimpleBatchUpload https://www.mediawiki.org/wiki/Extension:SimpleBatchUpload
	git clone https://github.com/ProfessionalWiki/SimpleBatchUpload.git && \
	
# DumpsOnDemand https://www.mediawiki.org/wiki/Extension:DumpsOnDemand
	git clone -b REL1_36 https://github.com/wikimedia/mediawiki-extensions-DumpsOnDemand.git ./DumpsOnDemand && \
	
# NativeSvgHandler https://www.mediawiki.org/wiki/Extension:NativeSvgHandler
	git clone https://github.com/wikimedia/mediawiki-extensions-NativeSvgHandler.git ./NativeSvgHandler && \

# MassEditRegex https://www.mediawiki.org/wiki/Extension:MassEditRegex
	git clone https://github.com/wikimedia/mediawiki-extensions-MassEditRegex.git ./MassEditRegex && \
	
# MobileFrontend https://www.mediawiki.org/wiki/Extension:MobileFrontend
	git clone https://github.com/wikimedia/mediawiki-extensions-MobileFrontend ./MobileFrontend
	
# Bootstrap https://www.mediawiki.org/wiki/Extension:Bootstrap

	
	
# Installing Skins
WORKDIR /var/www/html/skins

# DarkVector https://www.mediawiki.org/wiki/Skin:DarkVector/en
RUN git clone https://github.com/dolfinus/DarkVector.git  && \

# Minerva Neue https://www.mediawiki.org/wiki/Skin:Minerva_Neue	
	git clone -b REL1_36 https://github.com/wikimedia/mediawiki-skins-MinervaNeue.git ./MinervaNeue && \
	
# Tweeki https://www.mediawiki.org/wiki/Skin:Tweeki
	git clone https://github.com/thaider/Tweeki.git  && \

# Chameleon https://www.mediawiki.org/wiki/Skin:Chameleon

# Medik https://www.mediawiki.org/wiki/Skin:Medik
	git clone https://bitbucket.org/wikiskripta/medik.git ./Medik && \

# Foreground https://www.mediawiki.org/wiki/Skin:Foreground
	git clone https://github.com/jthingelstad/foreground.git ./Foreground && \

# Refreshed https://www.mediawiki.org/wiki/Skin:Refreshed
	git clone https://github.com/wikimedia/mediawiki-skins-Refreshed.git ./Refreshed && \

# Metrolook https://www.mediawiki.org/wiki/Skin:Metrolook
	git clone -b REL1_36 https://github.com/wikimedia/mediawiki-skins-Metrolook.git ./Metrolook 



#COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

WORKDIR /var/www/html