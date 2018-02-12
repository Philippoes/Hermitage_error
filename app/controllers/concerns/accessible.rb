# module Accessible
#   extend ActiveSupport::Concern
#    include do
#     before_action :check_user
#   end
#
#   protected
#   def check_user
#     if current_clinic
#       flash.clear
#       redirect_to(patient_index_path)
#     elsif current_doctor
#       flash.clear
#       redirect_to(patient_index_path)
#     end
#   end
# end