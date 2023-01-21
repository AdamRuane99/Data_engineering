"""Running the Xetra ETL application"""

import logging 
import logging.config 
import yaml 



def main():
    """
    This is entry point to run Xetra ETL job
    """
    ##Pass the YAML file -- USE S3 / Blob storage after ??
    config_path = 'C:/Users/Adam/xetra_project/xetra_project/configs/xetra_report1_config.yml'
    config = yaml.safe_load(open(config_path))
    #configure logging 
    log_config = config['logging']
    #use previous var to use as dictionary for dictConfig...
    logging.config.dictConfig(log_config)
    logger = logging.getLogger(__name__)
    logger.info("This is a test.")

if __name__ == '__main__':
    main()